import Header from "./Header";
import Footer from "./Footer";

function Layout(props) {
  return (
    <div className="layout">
      <Header />
      <main>{props.children}</main>
      <Footer />
    </div>
  );
}

export default Layout;
