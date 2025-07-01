<!DOCTYPE HTML>
<html>

<head>

    <meta charset="utf-8">

    <title>Jupyter Server</title>
    <link id="favicon" rel="shortcut icon" type="image/x-icon" href="/user/projectpythia-atmoscol-2023-lu7s5joo/static/favicon.ico?v=50afa725b5de8b00030139d09b38620224d4e7dba47c07ef0e86d4643f30c9bfe6bb7e1a4a1c561aa32834480909a4b6fe7cd1e17f7159330b6b5914bf45a880">
    
    <link rel="stylesheet" href="/user/projectpythia-atmoscol-2023-lu7s5joo/static/style/bootstrap.min.css?v=0e8a7fbd6de23ad6b27ab95802a0a0915af6693af612bc304d83af445529ce5d95842309ca3405d10f538d45c8a3a261b8cff78b4bd512dd9effb4109a71d0ab" />
    <link rel="stylesheet" href="/user/projectpythia-atmoscol-2023-lu7s5joo/static/style/bootstrap-theme.min.css?v=8b2f045cb5b4d5ad346f6e816aa2566829a4f5f2783ec31d80d46a57de8ac0c3d21fe6e53bcd8e1f38ac17fcd06d12088bc9b43e23b5d1da52d10c6b717b22b3" />
    <link rel="stylesheet" href="/user/projectpythia-atmoscol-2023-lu7s5joo/static/style/index.css?v=30372e3246a801d662cf9e3f9dd656fa192eebde9054a2282449fe43919de9f0ee9b745d7eb49d3b0a5e56357912cc7d776390eddcab9dac85b77bdb17b4bdae" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    


    
    

</head>

<body class=""    dir="ltr">

  <noscript>
    <div id='noscript'>
      Jupyter Server requires JavaScript.<br>
      Please enable it to proceed. 
    </div>
  </noscript>

  <div id="header" role="navigation" aria-label="Top Menu">
    <div id="header-container" class="container">
      <div id="jupyter_server" class="nav navbar-brand"><a href="/user/projectpythia-atmoscol-2023-lu7s5joo/lab" title='dashboard'>
          <img src='/user/projectpythia-atmoscol-2023-lu7s5joo/static/logo/logo.png?v=a2a176ee3cee251ffddf5fa21fe8e43727a9e5f87a06f9c91ad7b776d9e9d3d5e0159c16cc188a3965e00375fb4bc336c16067c688f5040c0c2d4bfdb852a9e4' alt='Jupyter Server' />
        </a></div>

      
      

      
      

    </div>
    <div class="header-bar"></div>

    
    
  </div>

  <div id="site">
    

<div id="jupyter-main-app" class="container">
    
    
    <div class="row">
        <div class="navbar col-sm-8">
            <div class="navbar-inner">
                <div class="container">
                    <div class="center-nav">
                        <form action="/user/projectpythia-atmoscol-2023-lu7s5joo/login?next=%2Fuser%2Fprojectpythia-atmoscol-2023-lu7s5joo%2Ffiles%2Fnotebooks%2Fdata%2FKVNX-radar-dtree.nc" method="post" class="navbar-form pull-left">
                            <input type="hidden" name="_xsrf" value="2|1c796a26|43780cfed092ab95537764c1c4ca87ad|1751393104"/>
                            
                            <label for="password_input"><strong>Password or token:</strong></label>
                            
                            <input type="password" name="password" id="password_input" class="form-control">
                            <button type="submit" class="btn btn-default" id="login_submit">Log in</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <div class="col-sm-6 col-sm-offset-3 text-left rendered_html">
        <h3>
            Token authentication is enabled
        </h3>
        <p>
            If no password has been configured, you need to open the
            server with its login token in the URL, or paste it above.
            This requirement will be lifted if you
            <b><a href='https://jupyter-server.readthedocs.io/en/latest/operators/public-server.html'>
                    enable a password</a></b>.
        </p>
        <p>
            The command:
        <pre>jupyter server list</pre>
        will show you the URLs of running servers with their tokens,
        which you can copy and paste into your browser. For example:
        </p>
        <pre>Currently running servers:
http://localhost:8888/?token=c8de56fa... :: /Users/you/notebooks
</pre>
        <p>
            or you can paste just the token value into the password field on this
            page.
        </p>
        <p>
            See
            <b><a href='https://jupyter-server.readthedocs.io/en/latest/operators/public-server.html'>
                    the documentation on how to enable a password</a>
            </b>
            in place of token authentication,
            if you would like to avoid dealing with random tokens.
        </p>
        <p>
            Cookies are required for authenticated access to the Jupyter server.
        </p>
        
        <h3>Setup a Password</h3>
        <p> You can also setup a password by entering your token and a new password
            on the fields below:</p>
        <form action="/user/projectpythia-atmoscol-2023-lu7s5joo/login?next=%2Fuser%2Fprojectpythia-atmoscol-2023-lu7s5joo%2Ffiles%2Fnotebooks%2Fdata%2FKVNX-radar-dtree.nc" method="post" class="">
            <input type="hidden" name="_xsrf" value="2|1c796a26|43780cfed092ab95537764c1c4ca87ad|1751393104"/>
            <div class="form-group">
                <label for="token_input">
                    <h4>Token</h4>
                </label>
                <input type="password" name="password" id="token_input" class="form-control">
            </div>
            <div class="form-group">
                <label for="new_password_input">
                    <h4>New Password</h4>
                </label>
                <input type="password" name="new_password" id="new_password_input" class="form-control" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-default" id="login_new_pass_submit">Log in and set new
                    password</button>
            </div>
        </form>
        

    </div>
    
    
</div>


  </div>

  
  

  


  <script type='text/javascript'>
    function _remove_token_from_url() {
      if (window.location.search.length <= 1) {
        return;
      }
      var search_parameters = window.location.search.slice(1).split('&');
      for (var i = 0; i < search_parameters.length; i++) {
        if (search_parameters[i].split('=')[0] === 'token') {
          // remote token from search parameters
          search_parameters.splice(i, 1);
          var new_search = '';
          if (search_parameters.length) {
            new_search = '?' + search_parameters.join('&');
          }
          var new_url = window.location.origin +
            window.location.pathname +
            new_search +
            window.location.hash;
          window.history.replaceState({}, "", new_url);
          return;
        }
      }
    }
    _remove_token_from_url();
  </script>
</body>

</html>