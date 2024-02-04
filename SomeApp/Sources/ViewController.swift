import UIKit

class MyView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("Не могу загрузить эту вью")
    }
}

class ViewController: UIViewController {
    // MARK: - UI
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.setImage(UIImage(named: "image"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 12, left: -40, bottom: 12, right: 10)
        
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        button.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 30)
        button.layer.cornerRadius = 20
        button.configuration?.imagePadding = 100
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
      
        return button
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: -150, y: 500, width: 380, height: 130))
        
        label.text = "Login"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var connectWith: UILabel = {
        let connectWith = UILabel()
        connectWith.text = "or connect with"
        connectWith.textColor = UIColor.systemGray
        connectWith.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        connectWith.translatesAutoresizingMaskIntoConstraints = false
        return connectWith
    }()
    
    private lazy var dontHave: UILabel = {
        let dontHave = UILabel()
        dontHave.text = "Don't have account?"
        dontHave.textColor = UIColor.systemGray
        dontHave.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        dontHave.translatesAutoresizingMaskIntoConstraints = false
        return dontHave
    }()
    
    private lazy var signUp: UIButton = {
        let signUp = UIButton()
        signUp.setTitle("Sign up", for: .normal)
        signUp.setTitleColor(.blue, for: .normal)
        //signUp.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        signUp.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        signUp.translatesAutoresizingMaskIntoConstraints = false
        return signUp
    }()
    
    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton()
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(.white, for: .normal)
        
        twitterButton.setImage(UIImage(named: "twitter"), for: .normal)
        twitterButton.imageView?.contentMode = .scaleAspectFit
        twitterButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: -50, bottom: 10, right: 10)
        
        twitterButton.backgroundColor = .blue
        twitterButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        twitterButton.titleEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 10)
        twitterButton.layer.cornerRadius = 20
        twitterButton.configuration?.imagePadding = 100
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.rasterizationScale = UIScreen.main.scale
        twitterButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
      
        return twitterButton
    }()
    
    private lazy var loginField: UITextField = {
        let loginField = UITextField(frame: CGRect(x: 50, y: 250, width: 60, height: 190))
        loginField.placeholder = "Login"
        loginField.textColor = .systemGray3
        loginField.textAlignment = .left
        loginField.contentVerticalAlignment = .center
        loginField.backgroundColor = .white
        loginField.setLeftIcon(UIImage(systemName: "user") ?? UIImage())
        loginField.setRightIcon(UIImage(systemName: "Subtract") ?? UIImage())
        loginField.layer.cornerRadius = 20
        loginField.layer.shadowColor = UIColor.black.cgColor
        loginField.layer.shadowOpacity = 0.3
        loginField.layer.shadowOffset = .zero
        loginField.layer.shadowRadius = 10
        loginField.layer.shouldRasterize = true
        loginField.layer.rasterizationScale = UIScreen.main.scale
        loginField.translatesAutoresizingMaskIntoConstraints = false
        return loginField
    }()
    
    private lazy var passwordField: UITextField = {
        let passwordField = UITextField(frame: CGRect(x: 50, y: 250, width: 60, height: 190))
        passwordField.placeholder = "Password"
        passwordField.textColor = .systemGray3
        passwordField.textAlignment = .left
        passwordField.contentVerticalAlignment = .center
        passwordField.backgroundColor = .white
        passwordField.setLeftIcon(UIImage(systemName: "user") ?? UIImage())
        passwordField.setRightIcon(UIImage(systemName: "Subtract") ?? UIImage())
        passwordField.layer.cornerRadius = 20
        passwordField.layer.shadowColor = UIColor.black.cgColor
        passwordField.layer.shadowOpacity = 0.3
        passwordField.layer.shadowOffset = .zero
        passwordField.layer.shadowRadius = 10
        passwordField.layer.shouldRasterize = true
        passwordField.layer.rasterizationScale = UIScreen.main.scale
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.backgroundColor = .systemIndigo
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        loginButton.layer.cornerRadius = 20
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        return loginButton
    }()
    
    private lazy var forgot: UIButton = {
        let forgot = UIButton()
        forgot.setTitle("Forgot your password?", for: .normal)
        forgot.setTitleColor(.white, for: .normal)
        //signUp.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        forgot.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        forgot.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        forgot.translatesAutoresizingMaskIntoConstraints = false
        return forgot
    }()
    
    // MARK: - Lines
    private lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.systemGray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    private lazy var secondLine: UIView = {
        let secondLine = UIView()
        secondLine.backgroundColor = UIColor.systemGray
        secondLine.translatesAutoresizingMaskIntoConstraints = false
        return secondLine
    }()
    
    // MARK: - Inits
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Lifecycle
    
    override func loadView() {
        let myView = MyView()
        view = myView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
        setupBackground()
  
        print("view did load")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view will appear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    deinit {
        
    }
    
    // MARK: - Setups
    
    private func setupView() {
        
    }
    
    private func setupHierarchy() {
        view.addSubview(button)
        view.addSubview(loginLabel)
        view.addSubview(twitterButton)
        view.addSubview(line)
        view.addSubview(secondLine)
        view.addSubview(connectWith)
        view.addSubview(dontHave)
        view.addSubview(signUp)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(forgot)
        
        
    }
    
    private func setupLayout() {
        button.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 38).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 160).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -215).isActive = true
        
        twitterButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        twitterButton.widthAnchor.constraint(equalToConstant: 160).isActive = true
        twitterButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        twitterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 240).isActive = true
        
        
        loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160).isActive = true
        
        line.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        line.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        line.widthAnchor.constraint(equalToConstant: 120).isActive = true
        line.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        secondLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        secondLine.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        secondLine.widthAnchor.constraint(equalToConstant: 120).isActive = true
        secondLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        dontHave.topAnchor.constraint(equalTo: view.topAnchor, constant: 730).isActive = true
        dontHave.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 95).isActive = true
        
        signUp.topAnchor.constraint(equalTo: view.topAnchor, constant: 724).isActive = true
        signUp.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 225).isActive = true
        
        connectWith.topAnchor.constraint(equalTo: view.topAnchor, constant: 593).isActive = true
        connectWith.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 148).isActive = true
        
        loginField.topAnchor.constraint(equalTo: view.topAnchor, constant: 260).isActive = true
        loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginField.heightAnchor.constraint(equalToConstant: 43).isActive = true
        
        passwordField.topAnchor.constraint(equalTo: view.topAnchor, constant: 325).isActive = true
        passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        passwordField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordField.heightAnchor.constraint(equalToConstant: 43).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 415).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 43).isActive = true
        
        forgot.topAnchor.constraint(equalTo: view.topAnchor, constant: 475).isActive = true
        forgot.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130).isActive = true
    }
    
    private func setupBackground() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "backgroundImage")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
    }
    
    // MARK: - Actions
    
    @objc
    private func buttonTapped() {
        print("Button tapped")
    }
    
    
}


