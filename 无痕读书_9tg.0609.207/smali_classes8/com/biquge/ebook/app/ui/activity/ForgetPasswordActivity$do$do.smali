.class public Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->new(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->for:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/apk/ze;->extends()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->do:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->if:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f1003ce

    .line 2
    invoke-static {v1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->class(Ljava/lang/String;)V

    const v0, 0x7f1002fa

    .line 4
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;->for:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
