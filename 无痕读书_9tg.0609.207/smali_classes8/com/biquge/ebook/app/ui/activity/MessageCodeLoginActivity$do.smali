.class public Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;
.super Lcom/apk/x5;
.source "MessageCodeLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
