/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/dcclient.h
// Purpose:     wxWindowDCImpl class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-27
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_DCCLIENT_H_
#define _WX_ANDROID_DCCLIENT_H_

#include "wx/android/dc.h"

class WXDLLIMPEXP_CORE wxWindowDCImpl : public wxAndroidDCImpl
{
public:
    wxWindowDCImpl( wxDC *owner );
    wxWindowDCImpl( wxDC *owner, wxWindow *win );

    ~wxWindowDCImpl();

protected:
    wxWindow *m_window;
};


class WXDLLIMPEXP_CORE wxClientDCImpl : public wxWindowDCImpl
{
public:
    wxClientDCImpl( wxDC *owner );
    wxClientDCImpl( wxDC *owner, wxWindow *win );

    ~wxClientDCImpl();
};


class WXDLLIMPEXP_CORE wxPaintDCImpl : public wxWindowDCImpl
{
public:
    wxPaintDCImpl( wxDC *owner );
    wxPaintDCImpl( wxDC *owner, wxWindow *win );
};

#endif // _WX_ANDROID_DCCLIENT_H_
