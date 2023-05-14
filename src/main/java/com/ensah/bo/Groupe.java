package com.ensah.bo;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;
import java.util.List;
import java.util.List;

@Entity
public class Groupe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idGroupe;
    @NotBlank(message = "champs important!")
    private String nom;

    @OneToMany(mappedBy = "grpC", cascade = {CascadeType.PERSIST,CascadeType.MERGE}, fetch = FetchType.EAGER)
    private List<Contact> contact = new ArrayList<Contact>();

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Groupe)) {
            return false;
        }
        return idGroupe != null && idGroupe.equals(((Groupe) o).getIdGroupe());
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

    public Groupe() {
    }

    public Groupe(Long idGroupe, String nom, List<Contact> contact) {
        this.idGroupe = idGroupe;
        this.nom = nom;
        this.contact = contact;
    }

    public Long getIdGroupe() {
        return idGroupe;
    }

    public void setIdGroupe(Long idGroupe) {
        this.idGroupe = idGroupe;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public List<Contact> getContact() {
        return contact;
    }

    public void setContact(List<Contact> contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        String Strings="Groupe{" +
                "idGroupe=" + idGroupe +
                ", nom='" + nom + '\'' +
                ", contact= '}";
        for(Contact c:contact){
            Strings+=c.toString();
        }
        return Strings;
    }
}