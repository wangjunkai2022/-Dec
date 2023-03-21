.class public final Lcom/apk/ys$do;
.super Ljava/lang/Object;
.source "CodeManager.java"

# interfaces
.implements Lcom/apk/ut$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ys;->for(Lcom/apk/ut$do;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ut$do;


# direct methods
.method public constructor <init>(Lcom/apk/ut$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ys$do;->do:Lcom/apk/ut$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/apk/ys;->new(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/eg;->throws()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/apk/ys$do;->do:Lcom/apk/ut$do;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/apk/ut$do;->do(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "CODE_SP_OAID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "CODE_SP_DEVICEID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
