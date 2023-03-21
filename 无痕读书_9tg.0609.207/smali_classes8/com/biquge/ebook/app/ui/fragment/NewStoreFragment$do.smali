.class public Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;
.super Lcom/apk/bg;
.source "NewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090517

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const v0, 0x7f1001da

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09051a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const v0, 0x7f1001e1

    .line 7
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 8
    iget-boolean v1, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->try:Z

    const-string v3, "2"

    .line 9
    invoke-static {p1, v0, v3, v2, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090519

    if-ne v0, v1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const v0, 0x7f1001db

    .line 12
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090509

    if-ne p1, v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const v0, 0x7f1001dc

    .line 16
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 17
    iget-boolean v1, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->try:Z

    const-string v3, "6"

    .line 18
    invoke-static {p1, v0, v3, v2, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
