.class public Lcom/biquge/ebook/app/ui/activity/LoginActivity$if;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/LoginActivity;->k(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->hideBaseLoading()V

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v1, 0x7f1001ce

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x30

    .line 4
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
