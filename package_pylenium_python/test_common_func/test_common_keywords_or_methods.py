class common_keywords_or_methods():
    
    
    def go_forward_or_back(py,forward_or_back):
        '''Navigate forward or back in the browser's history. (forward or back)
        '''
        py.go(forward_or_back)
        print(__doc__)







object_common_keywords_or_methods = common_keywords_or_methods()
# print(object_common_keywords_or_methods.go_forward_or_back.__doc__)
object_common_keywords_or_methods.go_forward_or_back("forward")