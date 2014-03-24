module AndFeathers
  class GzippedTarball
    #
    # and_feathers-gzipped_tarball is versioned independently of and_feathers.
    # The only breaking change in and_feathers that would affect
    # and_feathers-gzipped_tarball at this point is a change to the protocol
    # expected of the argument passed to +AndFeathers::Archive#to_io+
    #
    VERSION = "1.0.0.pre"
  end
end
