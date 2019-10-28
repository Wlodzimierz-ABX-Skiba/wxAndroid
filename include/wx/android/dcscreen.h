/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/dcscreen.h
// Purpose:     wxScreenDCImpl class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-27
// Copyright:   (c) Wlodzimierz ABX Skiba
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_DCSCREEN_H_
#define _WX_ANDROID_DCSCREEN_H_

#include "wx/android/dcclient.h"

class WXDLLIMPEXP_CORE wxScreenDCImpl : public wxWindowDCImpl
{
public:
    wxScreenDCImpl( wxScreenDC *owner );

    ~wxScreenDCImpl();

protected:
    virtual void DoGetSize(int *width, int *height) const wxOVERRIDE;
    virtual bool DoGetPixel(wxCoord x, wxCoord y, wxColour *col) const wxOVERRIDE;

    wxDECLARE_ABSTRACT_CLASS(wxScreenDCImpl);
};

#endif // _WX_ANDROID_DCSCREEN_H_
