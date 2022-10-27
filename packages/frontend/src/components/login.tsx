import { useNavigate } from "react-router-dom";
import "../App.css";

export function Login() {
  const navigate = useNavigate();

  const handleLoginClick = () => {
    navigate("/facilities");
  };

  return (
    <div className="form-wrapper">
      <form onSubmit={handleLoginClick}>
        <h2>Welcome Back!</h2>
        <input type="submit" value="Login" />
      </form>
    </div>
  );
}
