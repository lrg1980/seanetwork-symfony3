<?php
namespace AppBundle\Services;
use BackendBundle\Entity\Notification;

class NotificationService {
     public $manager;

     public function __construct($manager) {
          $this->manager = $manager;
     }                                            # Chequeado

     public function set($user, $type, $typeId, $extra = null){      # Chequeado
          $em = $this->manager;

          $notification = new Notification();                         # Chequeado
          $notification ->setUser($user);                             # Chequeado
          $notification ->setType($type);                             # Chequeado
          $notification ->setTypeId($typeId);                         # Chequeado
          $notification ->setReaded(0);                               # Chequeado
          $notification ->setCreatedAt(new \DateTime("now"));         # Chequeado
          $notification ->setExtra($extra);                           # Chequeado

          $em->persist($notification);
          $flush = $em->flush();

          if($flush == null){
               $status = true;
          } else{
               $status = false;
          }

          return $status;
     }

     public function read($user){
          $em = $this->manager;
          
          $notification_repo = $em->getRepository('BackendBundle:Notification');
          $notifications = $notification_repo->findBy(array('user' => $user ));

          foreach($notifications as $notification){
               $notification->setReaded(1);
               $em->persist($notification);
          }

          $flush = $em->flush();
          
          if($flush == null) {
               return true;
          }else {
               return false;
          }

          return true;
     }
}