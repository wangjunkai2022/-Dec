.class public Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;
.super Ljava/lang/Object;
.source "WebReadActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    const/16 v1, 0xf

    const/16 v2, 0x27e5

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->q(Landroid/app/Activity;II)V

    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    const v1, 0x7f100226

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method
