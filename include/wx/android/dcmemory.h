/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/dcmemory.h
// Purpose:     wxMemoryDCImpl class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-27
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_DCMEMORY_H_
#define _WX_ANDROID_DCMEMORY_H_

#include "wx/android/dcclient.h"

class WXDLLIMPEXP_CORE wxMemoryDCImpl : public wxAndroidDCImpl
{
public:
    wxMemoryDCImpl( wxMemoryDC *owner );
    wxMemoryDCImpl( wxMemoryDC *owner, wxBitmap& bitmap );
    wxMemoryDCImpl( wxMemoryDC *owner, wxDC *dc );
    ~wxMemoryDCImpl();

    virtual wxBitmap DoGetAsBitmap(const wxRect *subrect) const;
    virtual void DoSelect(const wxBitmap& bitmap);

    virtual const wxBitmap& GetSelectedBitmap() const;
    virtual wxBitmap& GetSelectedBitmap();

private:
    wxBitmap m_selected;
};

#endif // _WX_ANDROID_DCMEMORY_H_
