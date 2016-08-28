package com.talaria.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.owasp.esapi.AccessReferenceMap;
import org.owasp.esapi.errors.AccessControlException;
import org.owasp.esapi.reference.RandomAccessReferenceMap;

import com.talaria.model.AddressType;
import com.talaria.model.Order;
import com.talaria.model.Product;
import com.talaria.model.User;
import com.talaria.model.UserAdress;
import com.talaria.model.UserProfile;
import com.talaria.service.AddressService;
import com.talaria.service.ProductService;
import com.talaria.service.TransactionService;
import com.talaria.service.UserProfileService;
import com.talaria.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes({"roles", "prods", "loggedin", "ordrTemp"})
public class AppController {

	@Autowired
	UserService userService;
	
	@Autowired
	AddressService userAdressService;
	
	@Autowired
	UserProfileService userProfileService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	TransactionService transactionService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	private AccessReferenceMap arm;
	
	/**
	 * This method will direct the user to the products page
	 */
	
	/**
	 * 
	 *Get Products
	 */
	@RequestMapping(value = {"*", "/products" }, method = RequestMethod.GET)
	public String listProducts(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("loggedin", getPrincipal());
		arm = new RandomAccessReferenceMap();
		
		List<Product> bootProducts = productService.findByCategory("Boots");
		List<Product> shoeProducts = productService.findByCategory("Shoes");
		List<Product> sandalProducts = productService.findByCategory("Sandals");
		List<Product> slipperProducts = productService.findByCategory("Slippers");
		Map<String, List<Product>> prodss = new HashMap<>();
		
		for(Product prod: bootProducts){
			String indirectReference = "";
			indirectReference = (String) arm.addDirectReference(prod.getIdproducts());
			prod.setIndirectId(indirectReference);
		}
		prodss.put("Boots", bootProducts);
		for(Product prod: shoeProducts){
			String indirectReference = "";
			indirectReference = (String) arm.addDirectReference(prod.getIdproducts());
			prod.setIndirectId(indirectReference);
		}
		prodss.put("Shoes", shoeProducts);
		for(Product prod: sandalProducts){
			String indirectReference = "";
			indirectReference = (String) arm.addDirectReference(prod.getIdproducts());
			prod.setIndirectId(indirectReference);
		}
		prodss.put("Sandals", sandalProducts);
		for(Product prod: slipperProducts){
			String indirectReference = "";
			indirectReference = (String) arm.addDirectReference(prod.getIdproducts());
			prod.setIndirectId(indirectReference);
		}
		prodss.put("Slippers", slipperProducts);
		
		model.addAttribute("products", prodss);
		
		
		return "products";
	}
	
	/**
	 * This method will list all existing users.
	 * Get Users
	 */
	@RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {
		
		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		model.addAttribute("loggedinuser", getPrincipal());
		return "userslist";
	}
	
	@RequestMapping(value = { "/prodlist" }, method = RequestMethod.GET)
	public String manageProducts(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		List<Product> products = productService.findAllProducts();
		model.addAttribute("products", products);
		return "prodlist";
	}
	
	/**
	 * This method will direct the user to the product search page
	 */
	@RequestMapping(value = { "/prodlistsearch" }, params = "search", method = RequestMethod.GET)
	public String searchProdList(@RequestParam(value = "search") String search, ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		List<Product> products = productService.findByLike(search.toLowerCase());
		model.addAttribute("products", products);
		return "prodlist";
	}
	
	/**
	 * This method will direct the user to the product search page
	 */
	@RequestMapping(value = { "/productsearch" }, params = "search", method = RequestMethod.GET)
	public String searchProducts(@RequestParam(value = "search") String search, ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		arm = new RandomAccessReferenceMap();
		
		List<Product> searchProducts = productService.findByLike(search.toLowerCase());
		
		for(Product prod: searchProducts){
			String indirectReference = "";
			indirectReference = (String) arm.addDirectReference(prod.getIdproducts());
			prod.setIndirectId(indirectReference);
		}
		
		model.addAttribute("searchProducts", searchProducts);
		
		return "productsearch";
	}
	
	@RequestMapping(value = { "/product-{idproduct}" }, method = RequestMethod.GET)
	public String showProduct(@PathVariable String idproduct, ModelMap model) throws AccessControlException {
		model.addAttribute("loggedinuser", getPrincipal());
		Product prod = productService.findById(Integer.parseInt(arm.getDirectReference(idproduct).toString()));
		model.addAttribute("product", prod);
		model.addAttribute("prId", idproduct);
		
		return "product";
	}
	
	@RequestMapping(value = { "/purchase" }, method = RequestMethod.POST)
	public String purchaseProduct(@RequestParam("qty") int qty, @Valid @RequestParam("prodId") String prodId, ModelMap model) throws NumberFormatException, AccessControlException{
		model.addAttribute("loggedinuser", getPrincipal());
		System.out.println("dgdsfg " + prodId + " dfgdf");
		int id = Integer.parseInt(arm.getDirectReference(prodId).toString());
		System.out.println(id);
		Product prod = productService.findById(id);
		System.out.println(qty);
		
		User userTemp = userService.findBySSO(getPrincipal());
		double price = prod.getPrce() * qty + 250;
		Order order = new Order();
		order.setAdrss(userTemp.getAddressBasedonType(AddressType.SHPPING.getAddressType()));
		order.setUser(userService.findBySSO(getPrincipal()));
		order.setOrdrDte(new Timestamp((new Date()).getTime()));
		order.setQuantity(qty);
		order.setTotal(price);
		order.setProduct(prod);
		order.setStatus("Pstat");
		
		transactionService.saveTransaction(order);
		System.out.println("order id: " + order.getIdorders() + " order status: " + order.getStatus());
		
		model.addAttribute("buy", prod);
		model.addAttribute("qty", qty);
		model.addAttribute("ordrTemp", order);
		
		model.addAttribute("price", price);
		model.addAttribute("bill", userTemp.getAddressBasedonType(AddressType.BILLING.getAddressType()));
		model.addAttribute("ship", userTemp.getAddressBasedonType(AddressType.SHPPING.getAddressType()));
		
		return "purchase";
	}
	
	@RequestMapping(value = { "/SuccessPurchase" }, method = RequestMethod.POST)
	public String purchaseConfirm(@ModelAttribute("ordrTemp") Order order, ModelMap model){
		
		System.out.println("order id: " + order.getIdorders() + " order status: " + order.getStatus());
		transactionService.updateTransaction(order);
		System.out.println("order id: " + order.getIdorders() + " order status: " + order.getStatus());
		
		return "successPurchase";
	}
	
	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}
	
	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/registerpage" }, method = RequestMethod.GET)
	public String registerPage(ModelMap model) {
		return "registerUser";
	}

	
	/**
	 * This method will provide the medium to add a new user.
	 * @RequestParam Map<String,String> requestParams
	 */
	@RequestMapping(value = { "/registeruser" },method = RequestMethod.POST)
	public String registerUser(@Valid @RequestParam Map<String,String> requestParams) {
		User user = new User();
		UserAdress userAdress = new UserAdress();
		UserAdress userAdress2 = new UserAdress();
		
		
//		 if(result.hasErrors()){
//			 System.out.println("in result error");
//		    }
		//error checking of inputs
		//if(ErrorCheckRegister(requestParams))
		  //  System.out.println("in error checking");
		
		String firstName = requestParams.get("firstName");
		String middleInit = requestParams.get("middleInit");
		String lastName = requestParams.get("lastName");
		String ssoId = requestParams.get("ssoId");
		String password = requestParams.get("password");
		String email = requestParams.get("email");
		
		String hnum = requestParams.get("hnum");
		String strt = requestParams.get("strt");
		String sbdv = requestParams.get("sbdv");
		String city = requestParams.get("city");
		Integer pstl_code = Integer.valueOf(requestParams.get("pstl_code"));
		String country = requestParams.get("country");
		
		String hnum2 = requestParams.get("hnum2");
		String strt2 = requestParams.get("strt2");
		String sbdv2 = requestParams.get("sbdv2");
		String city2 = requestParams.get("city2");
		Integer pstl_code2 = Integer.valueOf(requestParams.get("pstl_code2"));
		String country2 = requestParams.get("country2");
		
		
		//set values of user and userAdress
		user.setFirstName(firstName);
		user.setMiddleInit(middleInit);
		user.setLastName(lastName);
		user.setSsoId(ssoId);
		user.setPassword(password);
		user.setEmail(email);
		
		userAdress.setAdrtyp(AddressType.SHPPING.getAddressType()); 
		userAdress.setHnum(hnum);
		userAdress.setStrt(strt);
		userAdress.setSbdv(sbdv);
		userAdress.setCity(city);
		userAdress.setPstl_code(pstl_code);
		userAdress.setCntry(country);
		
		userAdress2.setAdrtyp(AddressType.BILLING.getAddressType()); 
		userAdress2.setHnum(hnum2);
		userAdress2.setStrt(strt2);
		userAdress2.setSbdv(sbdv2);
		userAdress2.setCity(city2);
		userAdress2.setPstl_code(pstl_code2);
		userAdress2.setCntry(country2);
		
		user.addUserProfile(userProfileService.findByType("USER"));
		System.out.println("before"+user.toString());
		userService.saveUser(user);
		System.out.println("after"+user.toString());
		user.addUserAdress(userAdress);
		user.addUserAdress(userAdress2);
		userService.updateUser(user);
		
		
		
		
		return "successRegister";
	}
	
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		System.out.println("In HERE new usr");
		
		if (result.hasErrors()) {
			System.out.println("In HERE new usr errs");
			System.out.println(result.getFieldError());
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}
		
		userService.saveUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		//return "success";
		return "registrationsuccess";
	}


	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*//Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which is a unique key to a User.
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}*/


		userService.updateUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}

	
	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}
	

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
	
	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	return "login";  
	    }
	}
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/pmproducts", method = RequestMethod.GET)
	public String loginPM() {
		
	    	return "manageProducts";  
	   
	}
	
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/records", method = RequestMethod.GET)
	public String loginAM() {
		
	    	return "viewRecords";  
	   
	}

	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}


}