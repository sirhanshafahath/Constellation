<?php


/**
 * This class defines the structure of the 'wtvr_message_queue_global' table.
 *
 *
 * This class was autogenerated by Propel 1.4.2 on:
 *
 * Thu 26 Apr 2012 01:25:37 PM EDT
 *
 *
 * This map class is used by Propel to do runtime db structure discovery.
 * For example, the createSelectSql() method checks the type of a given column used in an
 * ORDER BY clause to know whether it needs to apply SQL to make the ORDER BY case-insensitive
 * (i.e. if it's a text column type).
 *
 * @package    lib.model.map
 */
class WtvrMessageQueueGlobalTableMap extends TableMap {

	/**
	 * The (dot-path) name of this class
	 */
	const CLASS_NAME = 'lib.model.map.WtvrMessageQueueGlobalTableMap';

	/**
	 * Initialize the table attributes, columns and validators
	 * Relations are not initialized by this method since they are lazy loaded
	 *
	 * @return     void
	 * @throws     PropelException
	 */
	public function initialize()
	{
	  // attributes
		$this->setName('wtvr_message_queue_global');
		$this->setPhpName('WtvrMessageQueueGlobal');
		$this->setClassname('WtvrMessageQueueGlobal');
		$this->setPackage('lib.model');
		$this->setUseIdGenerator(true);
		// columns
		$this->addPrimaryKey('WTVR_MESSAGE_QUEUE_ID', 'WtvrMessageQueueId', 'INTEGER', true, 11, null);
		$this->addColumn('WTVR_MESSAGE_RECIPIENT', 'WtvrMessageRecipient', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_SENDER', 'WtvrMessageSender', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_RECIPIENT_FNAME', 'WtvrMessageRecipientFname', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_RECIPIENT_LNAME', 'WtvrMessageRecipientLname', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_SENDER_FNAME', 'WtvrMessageSenderFname', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_SENDER_LNAME', 'WtvrMessageSenderLname', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_SUBJECT', 'WtvrMessageSubject', 'VARCHAR', false, 255, null);
		$this->addColumn('WTVR_MESSAGE_BODY', 'WtvrMessageBody', 'LONGVARCHAR', false, null, null);
		$this->addColumn('WTVR_MESSAGE_TEXT', 'WtvrMessageText', 'LONGVARCHAR', false, null, null);
		$this->addColumn('WTVR_MESSAGE_CREATED', 'WtvrMessageCreated', 'TIMESTAMP', false, null, null);
		$this->addColumn('WTVR_MESSAGE_SENT', 'WtvrMessageSent', 'TIMESTAMP', false, null, null);
		$this->addColumn('WTVR_MESSAGE_TYPE', 'WtvrMessageType', 'VARCHAR', false, 20, null);
		$this->addColumn('WTVR_MESSAGE_RESPONSE', 'WtvrMessageResponse', 'VARCHAR', false, 255, null);
		// validators
	} // initialize()

	/**
	 * Build the RelationMap objects for this table relationships
	 */
	public function buildRelations()
	{
	} // buildRelations()

	/**
	 * 
	 * Gets the list of behaviors registered for this table
	 * 
	 * @return array Associative array (name => parameters) of behaviors
	 */
	public function getBehaviors()
	{
		return array(
			'symfony' => array('form' => 'true', 'filter' => 'true', ),
			'symfony_behaviors' => array(),
		);
	} // getBehaviors()

} // WtvrMessageQueueGlobalTableMap