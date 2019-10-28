/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/pen.h
// Purpose:     wxPen class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_PEN_H_
#define _WX_ANDROID_PEN_H_

class WXDLLIMPEXP_CORE wxPen : public wxPenBase
{
public:
    wxPen();

    wxPen( const wxColour &colour, int width = 1, wxPenStyle style = wxPENSTYLE_SOLID );

    wxDEPRECATED_MSG("use wxPENSTYLE_XXX constants")
    wxPen(const wxColour& col, int width, int style);

    bool operator==(const wxPen& pen) const;
    bool operator!=(const wxPen& pen) const;

    virtual void SetColour(const wxColour& col);
    virtual void SetColour(unsigned char r, unsigned char g, unsigned char b);

    virtual void SetWidth(int width);
    virtual void SetStyle(wxPenStyle style);
    virtual void SetStipple(const wxBitmap& stipple);
    virtual void SetDashes(int nb_dashes, const wxDash *dash);
    virtual void SetJoin(wxPenJoin join);
    virtual void SetCap(wxPenCap cap);

    virtual wxColour GetColour() const;
    virtual wxBitmap *GetStipple() const;
    virtual wxPenStyle GetStyle() const;
    virtual wxPenJoin GetJoin() const;
    virtual wxPenCap GetCap() const;
    virtual int GetWidth() const;
    virtual int GetDashes(wxDash **ptr) const;

    wxDEPRECATED_MSG("use wxPENSTYLE_XXX constants")
    void SetStyle(int style) { SetStyle((wxPenStyle)style); }
        
protected:
    virtual wxGDIRefData *CreateGDIRefData() const;
    virtual wxGDIRefData *CloneGDIRefData(const wxGDIRefData *data) const;
};

#endif // _WX_ANDROID_PEN_H_
