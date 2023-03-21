.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    .line 6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
