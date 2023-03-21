.class public Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;
.super Lcom/apk/x5;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const v0, 0x7f1003cf

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/apk/ze;->extends()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    .line 2
    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    const/4 v6, 0x0

    const v0, 0x7f100191

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;

    invoke-direct {v9, p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$if;

    invoke-direct {v10, p0}, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$if;-><init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 5
    invoke-static/range {v5 .. v12}, Lcom/apk/eg;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    .line 6
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p2}, Lcom/biquge/ebook/app/bean/User;->setPwd(Ljava/lang/String;)V

    .line 9
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget-object v0, v0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class v0, Lcom/biquge/ebook/app/bean/User;

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "name = ?"

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, p2, v1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const-string p2, "EVENT_COMPLE_USERINFO_KEY"

    .line 12
    invoke-static {p2, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
