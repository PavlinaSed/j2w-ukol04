[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="nova">
<h2>Appending new Bussiness Card</h2>
    <p>Please fill out this form with the required information</p>
        <form action="/nova" method="post">
            <div class="col-md-8">
                <label for="given-name" class="form-label">Name</label>
                <input id="given-name" name="givenName" class="form-control" type="text" placeholder="first name, last name" required/>
            </div>
            <div class="col-md-7">
                <label for="company" class="form-label">Company</label>
                <input id="company" name="company" class="form-control" type="text" required/>
            </div>
            <div class="col-md-6">
                <label for="ulice" class="form-label">Street</label>
                <input id="ulice" name="ulice" class="form-control" type="text" required/>
            </div>
            <div class="col-md-5">
                <label for="obecPsc" class="form-label">Municipality, ZipCode</label>
                <input id="obecPsc" name="obecPsc" class="form-control" type="text" required/>
            </div>
            <div class="col-md-4">
                <label for="e-mail" class="form-label">E-mail</label>
                <input id="e-mail" name="e-mail" class="form-control" type="email"/>
            </div>
            <div class="col-md-3">
                <label for="telefon" class="form-label">Telefon</label>
                <input id="telefon" name="telefon" class="form-control" type="tel"/>
            </div>
            <div class="col-md-2">
                <label for="web" class="form-label">Web</label>
                <input id="web" name="web" class="form-control" type="url"/>
            </div>
            <div class="col-md-1 align-self-end">
                <button type="submit" class="btn btn-primary">Append</button>
</div>
</form>
</div>
</body>
</html>

