.class public Lcom/apk/cd;
.super Ljava/lang/Object;
.source "ReadFontPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/cd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/cd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apk/kf;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/NewReadFont;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->isDownloadOk()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 7
    sget-object p3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "refresh_read_font_url"

    invoke-virtual {p3, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p2, p0, Lcom/apk/cd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 11
    iput-object p3, p2, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->if:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/apk/cd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    .line 13
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    .line 14
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const-string p2, "refresh_read_font"

    .line 15
    invoke-static {p2, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
