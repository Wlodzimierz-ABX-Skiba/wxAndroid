/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/cursor.h
// Purpose:     wxCursor class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_CURSOR_H_
#define _WX_ANDROID_CURSOR_H_

#include "wx/image.h"

class WXDLLIMPEXP_CORE wxCursor : public wxCursorBase
{
public:
    wxCursor() { }
    wxCursor(wxStockCursor id) { InitFromStock(id); }
#if wxUSE_IMAGE
    wxCursor( const wxImage & image );
    wxCursor(const wxString& name,
             wxBitmapType type = wxCURSOR_DEFAULT_TYPE,
             int hotSpotX = 0, int hotSpotY = 0);
#endif

    virtual wxPoint GetHotSpot() const;
    
protected:
    void InitFromStock( wxStockCursor cursorId );
#if wxUSE_IMAGE
    void InitFromImage( const wxImage & image );
#endif

private:
    void Init();
    virtual wxGDIRefData *CreateGDIRefData() const;
    virtual wxGDIRefData *CloneGDIRefData(const wxGDIRefData *data) const;

    wxDECLARE_DYNAMIC_CLASS(wxCursor);
};

#endif // _WX_ANDROID_CURSOR_H_
