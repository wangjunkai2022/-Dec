.class public Lcom/apk/v40$if;
.super Ljava/lang/Object;
.source "GmProviderReward.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/v40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v40;


# direct methods
.method public constructor <init>(Lcom/apk/v40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v40$if;->do:Lcom/apk/v40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/v40$if;->do:Lcom/apk/v40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/v40;->this:Landroid/app/Activity;

    .line 4
    iget-object v2, v0, Lcom/apk/v40;->break:Ljava/lang/String;

    .line 5
    iget-object v3, v0, Lcom/apk/v40;->catch:Ljava/lang/String;

    .line 6
    iget-object v4, v0, Lcom/apk/v40;->class:Lcom/apk/z60;

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apk/v40;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method
