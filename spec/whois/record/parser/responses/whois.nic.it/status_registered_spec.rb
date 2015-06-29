# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.it.rb'

describe Whois::Record::Parser::WhoisNicIt, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.it/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Please note that the following result could be a subgroup of the data contained in the database. Additional information can be visualized at: http://www.nic.it/cgi-bin/Whois/whois.cgi")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.it")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("1999-12-10 00:00:00"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-04-21 01:05:35"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-04-21 00:00:00"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("MARKMONITOR-REG")
      expect(subject.registrar.name).to eq("MARKMONITOR-REG")
      expect(subject.registrar.organization).to eq("MarkMonitor International Limited")
      expect(subject.registrar.url).to eq("https://www.markmonitor.com/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("DUP430692088")
      expect(subject.registrant_contacts[0].name).to eq("Google Ireland Holdings")
      expect(subject.registrant_contacts[0].organization).to eq("Google Ireland Holdings")
      expect(subject.registrant_contacts[0].address).to eq("70 Sir John Rogersons Quay")
      expect(subject.registrant_contacts[0].city).to eq("Dublin")
      expect(subject.registrant_contacts[0].zip).to eq("2")
      expect(subject.registrant_contacts[0].state).to eq("IE")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("IE")
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
      expect(subject.registrant_contacts[0].created_on).to eq(Time.parse("2013-04-21 01:05:35"))
      expect(subject.registrant_contacts[0].updated_on).to eq(Time.parse("2013-04-21 01:05:35"))
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("DUP142437129")
      expect(subject.admin_contacts[0].name).to eq("Tsao Tu")
      expect(subject.admin_contacts[0].organization).to eq("Tu Tsao")
      expect(subject.admin_contacts[0].address).to eq("70 Sir John Rogersons Quay")
      expect(subject.admin_contacts[0].city).to eq("Dublin")
      expect(subject.admin_contacts[0].zip).to eq("2")
      expect(subject.admin_contacts[0].state).to eq("IE")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("IE")
      expect(subject.admin_contacts[0].phone).to eq(nil)
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq(nil)
      expect(subject.admin_contacts[0].created_on).to eq(Time.parse("2013-04-21 01:05:35"))
      expect(subject.admin_contacts[0].updated_on).to eq(Time.parse("2013-04-21 01:05:35"))
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts[0].id).to eq("DUP430692088")
      expect(subject.technical_contacts[0].name).to eq("Google Ireland Holdings")
      expect(subject.technical_contacts[0].organization).to eq("Google Ireland Holdings")
      expect(subject.technical_contacts[0].address).to eq("70 Sir John Rogersons Quay")
      expect(subject.technical_contacts[0].city).to eq("Dublin")
      expect(subject.technical_contacts[0].zip).to eq("2")
      expect(subject.technical_contacts[0].state).to eq("IE")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("IE")
      expect(subject.technical_contacts[0].phone).to eq(nil)
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq(nil)
      expect(subject.technical_contacts[0].created_on).to eq(Time.parse("2013-04-21 01:05:35"))
      expect(subject.technical_contacts[0].updated_on).to eq(Time.parse("2013-04-21 01:05:35"))
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.google.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns4.google.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns2.google.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns3.google.com")
    end
  end
  describe "#response_unavailable?" do
    it do
      expect(subject.response_unavailable?).to eq(false)
    end
  end
end
