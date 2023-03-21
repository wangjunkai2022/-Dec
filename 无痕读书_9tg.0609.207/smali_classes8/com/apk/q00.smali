.class public final Lcom/apk/q00;
.super Ljava/lang/Object;
.source "ComicShelfModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q00;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/q00;->do:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/apk/mu;->do(Ljava/lang/String;)V

    return-void
.end method
