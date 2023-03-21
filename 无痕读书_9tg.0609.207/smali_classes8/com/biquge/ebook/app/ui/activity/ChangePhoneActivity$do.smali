.class public Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;
.super Lcom/apk/x5;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    const v1, 0x7f1003c7

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;

    invoke-direct {v2, p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-static {v0, v1, v2, p1, p2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method
