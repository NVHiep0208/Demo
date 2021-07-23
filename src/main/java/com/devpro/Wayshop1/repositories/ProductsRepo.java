package com.devpro.Wayshop1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.Wayshop1.entities.ProductE;

@Repository
public interface ProductsRepo extends JpaRepository<ProductE, Integer>{


}
