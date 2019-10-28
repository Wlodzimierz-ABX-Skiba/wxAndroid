/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/app.h
// Purpose:     wxApp class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_APP_H_
#define _WX_ANDROID_APP_H_

class WXDLLIMPEXP_CORE wxApp : public wxAppBase
{
public:
    wxApp();
    ~wxApp();
    
    virtual bool Initialize(int& argc, wxChar **argv);

private:
    
    wxDECLARE_DYNAMIC_CLASS_NO_COPY( wxApp );
};
    
#endif // _WX_ANDROID_APP_H_
