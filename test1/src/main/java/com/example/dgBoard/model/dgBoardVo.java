package com.example.dgBoard.model;

public class dgBoardVo {

   
   private String dg_board_user_id;
   private int dg_board_num; 
   private String dg_board_title;
   private String dg_board_contents;
   private String dg_board_created;
   private String dg_board_modified;
   private int dg_board_no;
   private int dg_board_category;
   private String dg_board_del;
   public String getDg_board_user_id() {
      return dg_board_user_id;
   }
   public void setDg_board_user_id(String dg_board_user_id) {
      this.dg_board_user_id = dg_board_user_id;
   }
   public int getDg_board_num() {
      return dg_board_num;
   }
   public void setDg_board_num(int dg_board_num) {
      this.dg_board_num = dg_board_num;
   }
   public String getDg_board_title() {
      return dg_board_title;
   }
   public void setDg_board_title(String dg_board_title) {
      this.dg_board_title = dg_board_title;
   }
   public String getDg_board_contents() {
      return dg_board_contents;
   }
   public void setDg_board_contents(String dg_board_contents) {
      this.dg_board_contents = dg_board_contents;
   }
   public String getDg_board_created() {
      return dg_board_created;
   }
   public void setDg_board_created(String dg_board_created) {
      this.dg_board_created = dg_board_created;
   }
   public String getDg_board_modified() {
      return dg_board_modified;
   }
   public void setDg_board_modified(String dg_board_modified) {
      this.dg_board_modified = dg_board_modified;
   }
   public int getDg_board_no() {
      return dg_board_no;
   }
   public void setDg_board_no(int dg_board_no) {
      this.dg_board_no = dg_board_no;
   }
   public int getDg_board_category() {
      return dg_board_category;
   }
   public void setDg_board_category(int dg_board_category) {
      this.dg_board_category = dg_board_category;
   }
   public String getDg_board_del() {
      return dg_board_del;
   }
   public void setDg_board_del(String dg_board_del) {
      this.dg_board_del = dg_board_del;
   }
   @Override
   public String toString() {
      return "dgBoardVo [dg_board_user_id=" + dg_board_user_id + ", dg_board_num=" + dg_board_num
            + ", dg_board_title=" + dg_board_title + ", dg_board_contents=" + dg_board_contents
            + ", dg_board_created=" + dg_board_created + ", dg_board_modified=" + dg_board_modified
            + ", dg_board_no=" + dg_board_no + ", dg_board_category=" + dg_board_category + ", dg_board_del="
            + dg_board_del + "]";
   }
   
   

   
   
}
