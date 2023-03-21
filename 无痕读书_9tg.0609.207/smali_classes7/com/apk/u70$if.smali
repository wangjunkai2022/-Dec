.class public Lcom/apk/u70$if;
.super Ljava/lang/Object;
.source "GmProviderCpFullVideo.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/u70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/u70;


# direct methods
.method public constructor <init>(Lcom/apk/u70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u70$if;->do:Lcom/apk/u70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/u70$if;->do:Lcom/apk/u70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/u70;->o()V

    return-void
.end method
