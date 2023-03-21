.class public Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;
.super Lcom/apk/x5;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/RegisterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "username"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "password"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    return-void
.end method
