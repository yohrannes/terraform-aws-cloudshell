# 🚀 terraform-aws-cloudshell

Take control of your AWS infrastructure with ease! This project is tailored for **AWS CloudShell**, enabling you to provision resources quickly and securely without the need for complex local setups.

---

## 🌟 What does this project do?

- Automatically sets up AWS credentials in the CloudShell environment.
- Provides a streamlined Docker environment for running Terraform commands.
- Includes helpful shortcuts for Terraform and Kubernetes commands to save time.
- Simplifies the process of provisioning AWS resources with minimal effort.

---

## 🛠️ How to Get Started

### 1️⃣ Access **AWS CloudShell**.

### 2️⃣ Clone this repository:
```bash
git clone <repository-link>
```

### 3️⃣ Initialize the environment:
Run the initialization script with admin privileges:
```bash
sudo ./tfinu/.sh
```

### 4️⃣ Provision your infrastructure:
Plan and apply the necessary changes:
```bash
terraform plan -out "plan"
terraform apply "plan"
```

---

## 🧰 What's Included?

- **Dockerfile**: A lightweight Docker environment pre-configured for Terraform.
- **Convenient Aliases**: Shortcuts for Terraform commands in the `.shrc` file.
- **Credential Automation**: The `.sh` script automatically configures your AWS credentials.

---

## 🤝 How to Contribute

We welcome contributions to improve this project! Here’s how you can help:

- **Report Issues**: If you encounter any problems, open a [GitHub issue](https://github.com/yohrannes/terraform-aws-cloudshell/issues).
- **Submit Enhancements**: Share your improvements by creating a [pull request](https://github.com/yohrannes/terraform-aws-cloudshell/pulls).
- **Suggest Features**: Have an idea? Start a discussion in the project’s repository.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE). You’re free to use, modify, and share it as you see fit.

---

## 🌍 Join the Community!

This project is ideal for developers, DevOps engineers, and anyone passionate about infrastructure as code. Let’s collaborate, learn, and build together!