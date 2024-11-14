<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DeliByte Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem;
            background: linear-gradient(to bottom right, white, #f3f4f6);
            font-family: system-ui, -apple-system, sans-serif;
        }

        main {
            width: 100%;
            max-width: 28rem;
            background: white;
            border-radius: 1rem;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1),
                        0 10px 10px -5px rgba(0, 0, 0, 0.04);
            padding: 2rem;
            position: relative;
            overflow: hidden;
        }

        .background-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 11.4rem;
            background-color: #FF3B30;
            opacity: 0.1;
            background-image: url('https://images.unsplash.com/photo-1504674900247-0877df9cc836');
            background-size: cover;
            background-position: center;
        }

        .content {
            position: relative;
            z-index: 10;
        }

        h1 {
            font-size: 1.875rem;
            font-weight: bold;
            color: #333333;
            margin-bottom: 0.5rem;
        }

        .subtitle {
            color: #4b5563;
            margin-bottom: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            font-size: 0.875rem;
            font-weight: 500;
            color: #374151;
            margin-bottom: 0.5rem;
        }

        .input-wrapper {
            position: relative;
        }

        input {
            width: 100%;
            padding: 0.75rem 1rem;
            border-radius: 0.5rem;
            border: 1px solid #d1d5db;
            outline: none;
            transition: all 0.2s;
        }

        input:focus {
            border-color: transparent;
            box-shadow: 0 0 0 2px #FF3B30;
        }

        .error-message {
            display: none;
            color: #ef4444;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }

        .toggle-password {
            position: absolute;
            right: 0.75rem;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #6b7280;
            cursor: pointer;
        }

        .toggle-password:hover {
            color: #374151;
        }

        .submit-button {
            width: 100%;
            background-color: #FF3B30;
            color: white;
            padding: 0.75rem 1.5rem;
            border-radius: 0.5rem;
            font-weight: 500;
            border: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            transition: all 0.2s;
        }

        .submit-button:hover {
            background-color: #e63529;
            transform: scale(0.98);
        }

        .submit-button:focus {
            outline: none;
            box-shadow: 0 0 0 2px white, 0 0 0 4px #FF3B30;
        }

        .spinner {
            display: none;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        .toggle-form {
            text-align: center;
            font-size: 0.875rem;
            color: #4b5563;
            margin-top: 1.5rem;
        }

        .toggle-form a {
            color: #FF3B30;
            text-decoration: none;
            font-weight: 500;
        }

        .toggle-form a:hover {
            text-decoration: underline;
        }

        #signupForm {
            display: none;
        }
    </style>
</head>
<body>
    <main>
        <div class="background-image"></div>
        
        <div class="content">
            <h1>Welcome to DeliByte</h1>
            <p class="subtitle" id="formSubtitle">Login to order delicious food</p>
            
            <form id="loginForm" method="post" action="UserLogin">
                <div class="form-group">
                    <label for="loginEmail">Email Address</label>
                    <div class="input-wrapper">
                        <input type="email" id="loginEmail" name="loginEmail" required
                            placeholder="your@email.com"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                            autocomplete="email">
                        <div class="error-message" id="loginEmailError">Please enter a valid email address</div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="loginPassword">Password</label>
                    <div class="input-wrapper">
                        <input type="password" id="loginPassword" name="loginPassword" required
                            placeholder="Enter your password"
                            minlength="8"
                            autocomplete="current-password">
                        <button type="button" class="toggle-password" onclick="togglePasswordVisibility('loginPassword')">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>
                        </button>
                        <div class="error-message" id="loginPasswordError">Password must be at least 8 characters</div>
                    </div>
                </div>

                <button type="submit" class="submit-button">
                    <span>Login</span>
                </button>

                <p class="toggle-form">Don't have an account? 
                    <a href="#" onclick="toggleForms(event)">Sign up</a>
                </p>
            </form>

            <form id="signupForm" method="post" action="UserRegister">
                <div class="form-group">
                    <label for="signupName">UserName</label>
                    <div class="input-wrapper">
                        <input type="text" id="signupName" name="username" required
                            placeholder="Enter your full name"
                            autocomplete="name">
                        <div class="error-message" id="signupNameError">Please enter your name</div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="signupName">Mobile Number</label>
                    <div class="input-wrapper">
                        <input type="text" id="signupName" name="mobilenumber" required
                            placeholder="Enter your full name "
                            autocomplete="name">
                        <div class="error-message" id="signupNameError">Please enter your mobile number</div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="signupEmail">Email Address</label>
                    <div class="input-wrapper">
                        <input type="email" id="signupEmail" name="signupEmail" required
                            placeholder="your@email.com"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                            autocomplete="email">
                        <div class="error-message" id="signupEmailError">Please enter a valid email address</div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="signupPassword">Password</label>
                    <div class="input-wrapper">
                        <input type="password" id="signupPassword" name="signupPassword" required
                            placeholder="Enter your password"
                            minlength="8"
                            autocomplete="new-password">
                        <button type="button" class="toggle-password" onclick="togglePasswordVisibility('signupPassword')">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>
                        </button>
                        <div class="error-message" id="signupPasswordError">Password must be at least 8 characters</div>
                    </div>
                </div>

                <button type="submit" class="submit-button">
                    <span>Sign Up</span>
                </button>

                <p class="toggle-form">Already have an account? 
                    <a href="#" onclick="toggleForms(event)">Login</a>
                </p>
            </form>
        </div>
    </main>

    <script>
        function togglePasswordVisibility(inputId) {
            const input = document.getElementById(inputId);
            input.type = input.type === 'password' ? 'text' : 'password';
        }

        function toggleForms(event) {
            event.preventDefault();
            const loginForm = document.getElementById('loginForm');
            const signupForm = document.getElementById('signupForm');
            const subtitle = document.getElementById('formSubtitle');

            if (loginForm.style.display === 'none') {
                loginForm.style.display = 'block';
                signupForm.style.display = 'none';
                subtitle.textContent = 'Login to order delicious food';
            } else {
                loginForm.style.display = 'none';
                signupForm.style.display = 'block';
                subtitle.textContent = 'Create an account to start ordering';
            }
        }
    </script>
</body>
</html>