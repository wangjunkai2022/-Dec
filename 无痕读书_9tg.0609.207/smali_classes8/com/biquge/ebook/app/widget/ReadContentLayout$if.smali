.class public Lcom/biquge/ebook/app/widget/ReadContentLayout$if;
.super Lcom/apk/bg;
.source "ReadContentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ReadContentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ReadContentLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ReadContentLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout$if;->do:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090315

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout$if;->do:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->break:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
