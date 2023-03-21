.class public final Lcom/apk/dj0;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic try:Lcom/apk/xi0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;)V
    .locals 0

    iput-object p5, p0, Lcom/apk/dj0;->try:Lcom/apk/xi0;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/dj0;->try:Lcom/apk/xi0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lcom/apk/xi0;->finally(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
