.class public Lcom/apk/k30$do;
.super Ljava/util/TimerTask;
.source "ComicReadLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/k30;->const(Ljava/lang/String;Ljava/lang/String;Lcom/apk/k1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/k1;

.field public final synthetic if:Lcom/apk/k30;


# direct methods
.method public constructor <init>(Lcom/apk/k30;Lcom/apk/k1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k30$do;->if:Lcom/apk/k30;

    iput-object p2, p0, Lcom/apk/k30$do;->do:Lcom/apk/k1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/k30$do;->if:Lcom/apk/k30;

    iget-object v1, p0, Lcom/apk/k30$do;->do:Lcom/apk/k1;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/k30;->while(Lcom/apk/k1;Z)V

    return-void
.end method
