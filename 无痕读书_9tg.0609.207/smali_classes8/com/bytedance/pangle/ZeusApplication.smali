.class public Lcom/bytedance/pangle/ZeusApplication;
.super Lcom/bytedance/pangle/PluginContext;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mHostApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/PluginContext;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/bytedance/pangle/plugin/Plugin;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/PluginContext;->mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

    .line 2
    iput-object p2, p0, Lcom/bytedance/pangle/ZeusApplication;->mHostApplication:Landroid/app/Application;

    .line 3
    invoke-virtual {p0, p2}, Lcom/bytedance/pangle/ZeusApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/pangle/ZeusApplication;->onCreate()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method
