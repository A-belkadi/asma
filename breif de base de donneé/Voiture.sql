/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  22/04/2020 11:48:24                      */
/*==============================================================*/


drop table if exists Climatisation;

drop table if exists Composants;

drop table if exists Roue;

drop table if exists Voiture;

drop table if exists moteur;

/*==============================================================*/
/* Table : Climatisation                                        */
/*==============================================================*/
create table Climatisation
(
   Ref                  int not null,
   Type                 varchar(254),
   primary key (Ref)
);

/*==============================================================*/
/* Table : Composants                                           */
/*==============================================================*/
create table Composants
(
   Matricule            varchar(254),
   ID                   int not null,
   Ref                  int,
   Cli_Ref              int,
   Description          varchar(254),
   Prix                 float,
   primary key (ID)
);

/*==============================================================*/
/* Table : Roue                                                 */
/*==============================================================*/
create table Roue
(
   ID                   int,
   Ref                  int not null,
   Matiere              varchar(254),
   primary key (Ref)
);

/*==============================================================*/
/* Table : Voiture                                              */
/*==============================================================*/
create table Voiture
(
   Marque               varchar(254),
   Modele               int,
   Prix                 float,
   Matricule            varchar(254) not null,
   primary key (Matricule)
);

/*==============================================================*/
/* Table : moteur                                               */
/*==============================================================*/
create table moteur
(
   Carburant            varchar(254),
   Ref                  int not null,
   Capacite             float,
   primary key (Ref)
);
/* insertion*/

 
 
/* modification */




alter table Composants add constraint FK_Association_1 foreign key (Matricule)
      references Voiture (Matricule) on delete restrict on update restrict;

alter table Composants add constraint FK_Association_3 foreign key (Ref)
      references moteur (Ref) on delete restrict on update restrict;

alter table Composants add constraint FK_Association_4 foreign key (Cli_Ref)
      references Climatisation (Ref) on delete restrict on update restrict;

alter table Roue add constraint FK_Association_2 foreign key (ID)
      references Composants (ID) on delete restrict on update restrict;
      
      
select * from Voiture;

insert into Voiture values("Ford",124,5000,"RJHJH");
insert into Voiture values("Renault",124,5000,"LOUJY");

UPDATE Voiture SET Marque="Mazerati" WHERE Matricule= "RJHJH";

DELETE FROM Voiture  WHERE Matricule="LOUJY";