.class public Lcom/apk/o0$for;
.super Ljava/lang/Object;
.source "BookCacheManager.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/o0;->if(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/apk/o0$else;


# direct methods
.method public constructor <init>(Lcom/apk/o0;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/o0$else;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/apk/o0$for;->do:Z

    iput-object p3, p0, Lcom/apk/o0$for;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/o0$for;->for:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/o0$for;->new:Ljava/lang/String;

    iput-object p6, p0, Lcom/apk/o0$for;->try:Lcom/apk/o0$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/apk/o0$for;->do:Z

    iget-object v1, p0, Lcom/apk/o0$for;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o0$for;->for:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/o0$for;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/biquge/ebook/app/app/AppService;->else(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/o0$for;->try:Lcom/apk/o0$else;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/apk/o0$else;->do(Z)V

    :cond_1
    return-void
.end method
