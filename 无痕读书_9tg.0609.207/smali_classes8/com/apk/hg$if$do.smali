.class public Lcom/apk/hg$if$do;
.super Ljava/lang/Object;
.source "SystemBrightManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/hg$if;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hg$if;


# direct methods
.method public constructor <init>(Lcom/apk/hg$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hg$if$do;->do:Lcom/apk/hg$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hg$if$do;->do:Lcom/apk/hg$if;

    iget-object v0, v0, Lcom/apk/hg$if;->do:Lcom/apk/hg;

    invoke-virtual {v0}, Lcom/apk/hg;->try()V

    return-void
.end method
