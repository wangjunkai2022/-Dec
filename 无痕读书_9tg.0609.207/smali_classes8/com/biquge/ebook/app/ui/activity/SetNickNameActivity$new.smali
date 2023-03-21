.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;
.super Lcom/apk/x5;
.source "SetNickNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public this(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;)V

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    .line 3
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_SUBMIT_USER_AUDIT_NICKNAME_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x0

    const-string p2, "EVENT_COMPLE_USERINFO_KEY"

    .line 4
    invoke-static {p2, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
