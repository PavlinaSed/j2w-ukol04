[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="new">
    <h2>Appending new Business Card</h2>
    <p>Please fill out this form with the required information</p>
    <form action="/new" method="post">
        <div class="col-md-3">
            <label for="name" class="form-label">Name</label>
            <input id="name" name="name" class="form-control" type="text" placeholder="First name, Last name"
                   required/>
        </div>
        <div class="col-md-4">
            <label for="company" class="form-label">Company</label>
            <input id="company" name="company" class="form-control" type="text" required/>
        </div>
        <div class="col-md-5">
            <label for="street" class="form-label">Street</label>
            <input id="street" name="street" class="form-control" type="text" required/>
        </div>
        <div class="col-md-6">
            <label for="municipalityZip" class="form-label">Municipality, ZipCode</label>
            <input id="municipalityZip" name="municipalityZip" class="form-control" type="text" required/>
        </div>
        <div class="col-md-7">
            <label for="email" class="form-label">E-mail</label>
            <input id="email" name="email" class="form-control" type="email"/>
        </div>
        <div class="col-md-8">
            <label for="phone" class="form-label">Phone number</label>
            <input id="phone" name="phone" class="form-control" type="tel"/>
        </div>
        <div class="col-md-9">
            <label for="web" class="form-label">Web</label>
            <input id="web" name="web" class="form-control" type="text"/>
        </div>
        <div class="col-md-1 align-self-end">
            <button type="submit" class="btn btn-primary">Append</button>
        </div>
    </form>
</div>
</body>
</html>

