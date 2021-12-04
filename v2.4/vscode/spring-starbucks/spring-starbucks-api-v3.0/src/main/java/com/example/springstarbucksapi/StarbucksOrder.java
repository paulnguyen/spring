package com.example.springstarbucksapi;

import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;
import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;

import lombok.Data;
import lombok.RequiredArgsConstructor;

/* https://spring.io/guides/tutorials/rest/ */

@Entity
@Table(name="STARBUCKS_ORDER")
@Data
@RequiredArgsConstructor
class StarbucksOrder {

  private @Id @GeneratedValue Long id;
  @Column(nullable=false)  private String drink ;
  @Column(nullable=false)  private String milk ;
  @Column(nullable=false)  private String size ;
  private double total ;
  private String status ;
  
  @OneToOne(cascade = CascadeType.ALL)
  @JoinColumn(name = "card_id", referencedColumnName = "id")
  private StarbucksCard card ;

}


/* Spring JPA References:

  * https://docs.spring.io/spring-data/jpa/docs/2.5.1/reference/html
  * https://docs.spring.io/spring-data/jpa/docs/2.5.1/api
  * https://www.baeldung.com/spring-data-rest-relationships
  * https://www.baeldung.com/hibernate-one-to-many
  * https://www.baeldung.com/jpa-one-to-one
  * https://www.baeldung.com/jpa-cascade-types
  * https://www.baeldung.com/category/persistence/tag/jpa
  
*/