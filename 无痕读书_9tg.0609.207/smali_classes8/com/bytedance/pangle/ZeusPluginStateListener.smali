.class public abstract Lcom/bytedance/pangle/ZeusPluginStateListener;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final EVENT_DOWNLOAD_FAILED:I = 0x4

.field public static final EVENT_DOWNLOAD_PROGRESS:I = 0x2

.field public static final EVENT_DOWNLOAD_START:I = 0x1

.field public static final EVENT_DOWNLOAD_SUCCESS:I = 0x3

.field public static final EVENT_INSTALL_FAILED:I = 0x7

.field public static final EVENT_INSTALL_START:I = 0x5

.field public static final EVENT_INSTALL_SUCCESS:I = 0x6

.field public static final EVENT_LOAD_FAILED:I = 0xa

.field public static final EVENT_LOAD_START:I = 0x8

.field public static final EVENT_LOAD_SUCCESS:I = 0x9

.field public static final EVENT_REQUEST_FINISH:I

.field public static final mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/pangle/ZeusPluginStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/bytedance/pangle/ZeusPluginStateListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/pangle/ZeusPluginStateListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/pangle/ZeusPluginStateListener$1;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public varargs abstract onPluginStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
.end method
