.class public final Lcom/apk/w40;
.super Ljava/lang/Object;
.source "TrAdConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w40;->do:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/apk/w40;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/w40;->do:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/apk/w40;->if:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/apk/k40;->final(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
