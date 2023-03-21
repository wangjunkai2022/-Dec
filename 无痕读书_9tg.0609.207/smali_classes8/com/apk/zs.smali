.class public Lcom/apk/zs;
.super Ljava/lang/Object;
.source "DialogBuilder.java"


# instance fields
.field public break:Z

.field public case:Ljava/lang/String;

.field public catch:Z

.field public class:Z

.field public const:Z

.field public do:Landroid/content/Context;

.field public else:Lcom/apk/dt;

.field public final:Z

.field public for:Ljava/lang/String;

.field public goto:Lcom/apk/gt;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public this:Lcom/apk/et;

.field public try:Lcom/apk/ft;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/zs;->break:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zs;->do:Landroid/content/Context;

    return-object v0
.end method
