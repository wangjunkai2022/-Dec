.class public Lcom/apk/o0$if;
.super Ljava/lang/Object;
.source "BookCacheManager.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/o0;->do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/o0$else;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Z

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/o0;Lcom/apk/o0$else;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/o0$if;->do:Lcom/apk/o0$else;

    iput-boolean p3, p0, Lcom/apk/o0$if;->if:Z

    iput-object p4, p0, Lcom/apk/o0$if;->for:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/o0$if;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o0$if;->do:Lcom/apk/o0$else;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/apk/o0$else;->do(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/apk/o0$if;->if:Z

    iget-object v0, p0, Lcom/apk/o0$if;->for:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/o0$if;->new:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/app/AppService;->case(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
