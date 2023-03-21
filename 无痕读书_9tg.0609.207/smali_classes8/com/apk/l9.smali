.class public Lcom/apk/l9;
.super Lcom/apk/yv;
.source "NewBookReadActivity.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 1

    const/4 p1, 0x1

    const-string v0, "SP_SHOW_CHAPTER_RELOAD_POPUP_KEY"

    .line 1
    invoke-static {v0, p1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/l9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    :cond_0
    return-void
.end method
