.class public Lcom/apk/z40$for;
.super Ljava/lang/Object;
.source "GmProviderSplash.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/z40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/z40;


# direct methods
.method public constructor <init>(Lcom/apk/z40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z40$for;->do:Lcom/apk/z40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/z40$for;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/z40;->k()V

    const/4 v0, 0x1

    const-string v1, "AD_REQUEST_GROMORE_CONFIG_KEY"

    .line 4
    invoke-static {v1, v0}, Lcom/apk/g50;->try(Ljava/lang/String;Z)V

    return-void
.end method
