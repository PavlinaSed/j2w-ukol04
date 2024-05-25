package cz.czechitas.java2webapps.ukol3.entity;

import java.util.Objects;

/**
 * Entita obsahující údaje zobrazené na vizitce.
 */
public class BusinessCard {
    private String name;
    private String company;
    private String street;
    private String municipalityZip;
    private String email;
    private String phone;
    private String web;


    public BusinessCard(String name, String company, String street, String municipalityZip, String email, String phone, String web) {
        this.name = name;
        this.company = company;
        this.street = street;
        this.municipalityZip = municipalityZip;
        this.email = email;
        this.phone = phone;
        this.web = web;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = Objects.requireNonNull(name);
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = Objects.requireNonNull(company);
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = Objects.requireNonNull(street);
    }

    public String getMunicipalityZip() {
        return municipalityZip;
    }

    public void setMunicipalityZip(String municipalityZip) {
        this.municipalityZip = Objects.requireNonNull(municipalityZip);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getCompleteAddress() {
        return street + ", " + municipalityZip;
    }
}

