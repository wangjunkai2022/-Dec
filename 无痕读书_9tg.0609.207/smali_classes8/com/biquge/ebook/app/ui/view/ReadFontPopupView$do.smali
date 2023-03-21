.class public Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$do;
.super Lcom/apk/u5;
.source "ReadFontPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public super(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NewReadFont;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
