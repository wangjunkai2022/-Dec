.class public Lcom/apk/a80$if;
.super Ljava/lang/Object;
.source "GmProviderInsert.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/a80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a80;


# direct methods
.method public constructor <init>(Lcom/apk/a80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a80$if;->do:Lcom/apk/a80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a80$if;->do:Lcom/apk/a80;

    .line 2
    invoke-virtual {v0}, Lcom/apk/a80;->j()V

    return-void
.end method
