<?php


/**
 * This class defines the structure of the 'admin_user' table.
 *
 *
 * This class was autogenerated by Propel 1.4.2 on:
 *
 * Thu 26 Apr 2012 01:25:32 PM EDT
 *
 *
 * This map class is used by Propel to do runtime db structure discovery.
 * For example, the createSelectSql() method checks the type of a given column used in an
 * ORDER BY clause to know whether it needs to apply SQL to make the ORDER BY case-insensitive
 * (i.e. if it's a text column type).
 *
 * @package    lib.model.map
 */
class AdminUserTableMap extends TableMap {

	/**
	 * The (dot-path) name of this class
	 */
	const CLASS_NAME = 'lib.model.map.AdminUserTableMap';

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
		$this->setName('admin_user');
		$this->setPhpName('AdminUser');
		$this->setClassname('AdminUser');
		$this->setPackage('lib.model');
		$this->setUseIdGenerator(true);
		// columns
		$this->addPrimaryKey('ADMIN_USER_ID', 'AdminUserId', 'INTEGER', true, 11, null);
		$this->addColumn('ADMIN_USER_FNAME', 'AdminUserFname', 'VARCHAR', false, 255, null);
		$this->addColumn('ADMIN_USER_LNAME', 'AdminUserLname', 'VARCHAR', false, 255, null);
		$this->addColumn('ADMIN_USER_EMAIL', 'AdminUserEmail', 'VARCHAR', false, 255, null);
		$this->addColumn('ADMIN_USER_PASSWORD', 'AdminUserPassword', 'VARCHAR', false, 255, null);
		$this->addColumn('ADMIN_USER_UAL', 'AdminUserUal', 'LONGVARCHAR', false, null, null);
		$this->addColumn('ADMIN_USER_PHONE', 'AdminUserPhone', 'VARCHAR', false, 255, null);
		$this->addColumn('ADMIN_USER_CELL', 'AdminUserCell', 'VARCHAR', false, 255, null);
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

} // AdminUserTableMap