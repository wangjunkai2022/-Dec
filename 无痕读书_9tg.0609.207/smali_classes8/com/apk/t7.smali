.class public Lcom/apk/t7;
.super Ljava/lang/Object;
.source "ImportFileActivity.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t7;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:"

    .line 2
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/t7;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/apk/t7;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
