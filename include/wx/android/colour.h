/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/colour.h
// Purpose:     wxColour class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_COLOUR_H_
#define _WX_ANDROID_COLOUR_H_

class WXDLLIMPEXP_CORE wxColour : public wxColourBase
{
public:
    DEFINE_STD_WXCOLOUR_CONSTRUCTORS

    virtual bool IsOk() const { return m_valid; }

    ChannelType Red() const   { return m_red;   }
    ChannelType Green() const { return m_green; }
    ChannelType Blue()  const { return m_blue;  }
    ChannelType Alpha() const { return m_alpha; }

    bool operator==(const wxColour& color) const;
    bool operator!=(const wxColour& color) const;

    int GetPixel() const;

protected:
    void Init();
    virtual void InitRGBA(ChannelType r, ChannelType g, ChannelType b, ChannelType a);

private:
    ChannelType m_red, m_green, m_blue, m_alpha;
    bool m_valid;

    wxDECLARE_DYNAMIC_CLASS(wxColour);
};

#endif // _WX_ANDROID_COLOUR_H_
