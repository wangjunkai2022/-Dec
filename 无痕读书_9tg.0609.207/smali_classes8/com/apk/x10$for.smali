.class public Lcom/apk/x10$for;
.super Lcom/apk/bg;
.source "ComicRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/x10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$for;->do:Lcom/apk/x10;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090186

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/x10$for;->do:Lcom/apk/x10;

    .line 3
    iget-object p1, p1, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->if(I)V

    :cond_0
    return-void
.end method
